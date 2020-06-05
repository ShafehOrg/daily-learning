import React from "react";

export default function SectionsList() {

  const list = [1,2].map(item => {
    return (
      <div key={item} className="list">
        {item}
      </div>
    )
  })
  
  return (<>{ list }</>);
}
