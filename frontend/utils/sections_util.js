export const allSections = () => {
  return $.ajax({
    url: "api/sections",
  });
}

export const oneSection = id => {
  return $.ajax({
    url: `api/sections/${id}`,
  });
};